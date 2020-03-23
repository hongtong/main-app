tar -czvf source.tar.gz ./build
scp ./source.tar.gz $USERNAME@$SERVER:/var/www/html/source.tar.gz
ssh $USERNAME@$SERVER -o StrictHostKeyChecking=no 'cd /var/www/ && rm -rf ./react && tar -xzvf source.tar.gz && mv build react && rm source.tar.gz'