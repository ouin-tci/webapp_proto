```
vagrant up
vagrant ssh
```

swith to root user
```
sudo su
```

yum update
```
vi /etc/yum.conf


//press a key switch insert mode, then goto 19th line
#releasever=latest
↓
releasever=latest

:wq

yum -y update
exit

```


postgresql96 install
```
sudo yum install -y postgresql96 postgresql96-server postgresql96-libs postgresql96-contrib

sudo /etc/init.d/postgresql96 initdb
sudo /etc/init.d/postgresql96 start
sudo chkconfig postgresql96 on

#confirm
sudo -u postgres -i psql -c 'SELECT version();'
```

eidt postgresql conf file
```
sudo vi /var/lib/pgsql96/data/postgresql.conf 
listen_addresses = 'localhost'
↓
listen_addresses = '*' 
port = 5432

:wq

sudo vi /var/lib/pgsql96/data/pg_hba.conf 
//modify
# IPv4 local connections:
host    all         all         127.0.0.1/32          trust
host    all         all         0.0.0.0/0             trust
:wq

sudo service postgresql96 restart

```



ruby install
```
git --version
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

rbenv -v

rbenv install 2.4.4
rbenv global 2.4.4
ruby -v

gem install bundler
gem install rails
yum install sqlite-devel

```
