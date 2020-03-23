tar -czvf source.tar.gz ./build
scp ./source.tar.gz $USERNAME@$SERVER:/var/www/html/source.tar.gz
ssh $USERNAME@$SERVER -o StrictHostKeyChecking=no 'cd /var/www/html/ && tar -xzvf source.tar.gz && rm -rf react && mv build react && rm source.tar.gz && exit'