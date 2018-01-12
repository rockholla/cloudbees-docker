export PATH=$PATH:/root/bin:/root/shinobi-tools/exec:/root/shinobi-tools/bin
export CB_SUPPORT_HOME=/root/support
source /root/config

# Initialize maven
if [ ! -f /root/.m2/settings-security.xml ]; then
  echo "Setting Maven Master Password"
  maven_master_password_encrypted=$(mvn --encrypt-master-password $maven_master_password)
  mkdir -p /root/.m2
  cat > /root/.m2/settings-security.xml <<EOF
<settingsSecurity>
 <master>${maven_master_password_encrypted}</master>
</settingsSecurity>
EOF
fi

if [ ! -f /root/.m2/settings.xml ]; then
  nexus-download
fi

# Set up Zendesk config file
if [ ! -f /root/.zendesk-cli.config ]; then
  echo "Setting Zendesk Config"
  cat > /root/.zendesk-cli.config <<EOF
zd.username=${zendesk_username}
zd.password=${zendesk_password}
EOF
fi

# ensure shinobi cli is installed
if ! command -v shinobi; then
  echo "Installing Shinobi Tools"
  cd /root/shinobi-tools
  ./install.sh
  cd /root
  rm -rf /root/cbsupporthome
fi
