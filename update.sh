read -p "This script requires aptitude, and is only available for Debian and Ubuntu or any of its derivatives, do you want to continue? [y/n]: " $YNQUESTION

if [[ "$YNQUESTION" == "y" ]]; then
  echo "Updating..."
  sudo aptitude update
  read -p "Safe upgrade or Full upgrade? [safe/full]: " $YNQUESTION
  sudo aptitude -P $YNQUESTION-upgrade
else
  echo "Cancelled."
fi
