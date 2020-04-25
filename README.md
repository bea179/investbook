### Назначение
Приложение формирует аналитический обзор финансовых портфелей. Вся информация о финансовом портфеле хранится
и обрабатывается локально, подключение к интернету не требуется.

### Установка
1. Cкачать со станицы [проекта](https://github.com/vananiev/portfolio/releases/latest)
   архив `portfolio.zip` и распаковать на рабочий стол.
1. Скачать [Java 14](https://download.java.net/java/GA/jdk14/076bab302c7b4508975440c56f6cc26a/36/GPL/openjdk-14_windows-x64_bin.zip)
   и распаковыть из архива папку `jdk-14` в `C:\Program Files\Java\`.

Подробная инструкция по установке и запуску прилжения для [windows](docs/install-on-windows.md)
и [linux](docs/install-on-linux.md).

### Работа с приложением
Запустите `start.bat`, в браузере перейдите по адресу http://localhost и загрузите отчеты брокера.

Для удобства приложение допускает:
1. Многократную загрузку одного и того же отчета (полезно, если вы не помните, загрузили конкретный отчет или нет),
   дублирования данных не произойдет.
1. Загрузку отчетов за любой временной интервал (день, месяц, год или др). Причем, допустимо, что отчеты разных временных 
   периодов будут перекрываться.
1. Допустимо загружать отчеты по нескольким брокерским/инвестиционным счетам, в том числе от разных брокерских домов.

После загрузки отчета становится доступным аналитическая выгрузка по вашим портфелям в формате exсel файла:
- доходность сделок на фондовом рынке;
  ![stock-market](https://user-images.githubusercontent.com/11336712/78156498-8de02b00-7447-11ea-833c-cfc755bd7558.png)
- доходность сделок на срочном рынке;
  ![derivatives-market](https://user-images.githubusercontent.com/11336712/78156504-8f115800-7447-11ea-87e5-3cd4c34aab47.png)
- пополнения, списания и доходность портфеля;
  ![cash-in](https://user-images.githubusercontent.com/11336712/78156505-8f115800-7447-11ea-8f6d-6a34c21dfc89.png)
- налоговая нагрузка. 
  ![tax](https://user-images.githubusercontent.com/11336712/78156502-8e78c180-7447-11ea-9259-445c85d75a65.png)

Важно: для корректного учета выплат по ценным бумагам (дивидендов, купонов, амортизации облигаций) приложению необходима
точная информация о количестве бумаг на момент выплаты. Поэтому важно загружать в приложение все сделки (не пропускать
отчеты брокера). Если информация о количестве ценных бумаг, которой обладает приложение, отличается от количества бумаг,
по которым произведена выплата, то при формировании аналитической выгрузки приложение сообщит об ошибке.

### Обновление приложения
Скачать со станицы [проекта](https://github.com/vananiev/portfolio/releases/latest) архив `portfolio.zip` и
распаковать в любую удобную папку. Приложение готово к запуску файлом `start.bat`.

### Смена СУБД
Приложение по умолчанию использует СУБД H2 и сохраняет данные в файл `portfolio.mv.db` в каталоге пользователя.
Если у вас не достаточно опыта или нет желания перейти на другую СУБД, пропустите этот раздел.

Возможен переход на [MariaDB](https://downloads.mariadb.org/)
([ссылка](https://downloads.mariadb.org/interstitial/mariadb-10.4.12/win32-packages/mariadb-10.4.12-win32.msi/from/http%3A//mariadb.melbourneitmirror.net/)
на дистрибутив для Windows). После установки, создать файл `application.properties` с содержимым
```
spring.profiles.active=core,mariadb,conf
```
укажите логин и пароль доступа к БД
```
spring.datasource.username=root
spring.datasource.password=123456
```
После смены БД необходимо перезалить отчеты брокера. Ранее загруженные отчеты могут быть найдены в домашней директории
пользователя в папке `portfolio-report-backups`.

