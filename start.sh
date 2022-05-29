if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sahidmalik001/file-filtar-bot.git /file-filtar-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file-filtar-bot
fi
cd /file-filtar-bot
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
