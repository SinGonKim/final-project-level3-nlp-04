crontab -r

mkdir -p /opt/ml/final_project/bash/log

(crontab -l 2>/dev/null; echo "0 2 * * * bash /opt/ml/final_project/bash/crawling_4.sh  >> /opt/ml/final_project/bash/log/crawling_4.log 2>&1") | crontab -

service cron restart
crontab -l
