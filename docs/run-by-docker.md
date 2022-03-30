### Запуск в Docker контейнере

Способ является альтернативой установке Investbook на [windows](install-on-windows.md), [mac](install-on-linux.md)
и [linux](install-on-linux.md). Способ отличается более простым процессом обновления.

#### Установка Docker
Перед первым запуском Investbook нужно установить docker.

##### Установка на Windows
Требуется версия Windows 10 или новее.

1. Скачайте пакет Docker Desktop с официального [сайта](https://docs.docker.com/desktop/windows/install/).
2. Установите пакет и запустите Docker Desktop из списка приложений.
3. Создайте в домашней директории папку "investbook" для хранения данных приложения.

##### Установка на MacOS
Требуется версия MacOS 10.15 или новее.

1. Скачайте пакет Docker Desktop с официального [сайта](https://docs.docker.com/desktop/mac/install/).
2. Установите пакет и запустите Docker.app из списка приложений.
3. Создайте в домашней директории папку "investbook" для хранения данных приложения.

##### Установка на Linux
Пример установки на Ubuntu
```shell
sudo apt install docker.io
sudo usermod --append --groups docker $(whoami)
mkdir ~/investbook
```
#### Запуск Investbook
Запустите консоль (cmd / powershell / terminal) и наберите команду:
1. Если используется Windows
   ```shell
   docker run --rm -p 80:80 -v /c/users/<имя-windows-пользователя>/investbook:/home/cnb/investbook spaciousteam/investbook
   ```
   где `/c/users/<имя-windows-пользователя>/investbook` это путь в формате, понятной docker, к папке "investbook"
   в каталоге вашего пользователя.
1. Если используется MaсOS или Linux
   ```shell
   docker run --rm -p 80:80 -v ~/investbook:/home/cnb/investbook spaciousteam/investbook
   ```
Будет загружена и запущена последняя версия Investbook. Далее переходите в браузер и открывайте Investbook
по адресу http://localhost

#### Обновление Investbook
Удалите текущую версию
```shell
docker rmi spaciousteam/investbook:latest
```
Далее для загрузки и запуска самой новой версии Investbook выполните команду из предыдущего раздела.
