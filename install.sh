if [ "$1" = "-rebooted" ]; then
  {
    echo "Installing part 2/2."
    echo "Downloading script"
    curl -H 'Authorization: token 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' -H 'Accept: application/vnd.github.v3.raw' -o /etc/init/customFanTemps -L "https://raw.githubusercontent.com/r00shy/auto-thermalset/main/customFanTemps.config"
    echo "Starting service"
    initctl start customFanTemps
    initctl reload customFanTemps
    echo "Installation is complete."
    exit 1
  }
else
  echo "Installing part 1/2."
  echo "Removing read-write protection"
  crossystem dev_boot_signed_only=0
  partition_id=$(sudo /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification | grep -m1 -o "partitions.*")
  /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --$partition_id
  echo "Chrome OS will reboot in 5 seconds."
  sleep 5
  reboot
  exit 1
fi
