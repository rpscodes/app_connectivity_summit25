curl -s https://raw.githubusercontent.com/app-connectivity-workshop/scripts/refs/heads/main/m1/convert_grant_token.sh | bash > summit_token.yaml
sleep 20

scp summit_token.yaml lab-user@rhel.wzwnh-1.sandbox4735.opentlc.com:/home/lab-user/.local/share/skupper/namespaces/default/input/resources/