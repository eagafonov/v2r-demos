V2R Demos
=========

Зависимости
-----------

1. Virt2real SDK <http://wiki.virt2real.ru/wiki/%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0_Virt2real_SDK>
2. CMake версии 2.8 и выше (<http://cmake.org>)

Для установки CMake воспользуйтесь любимым пакетным менеджеров вашего дистрибутива 

    Debin/Ubuntu
    #> aptitude install cmake

    CentOS/RHEL 
    #> yum install cmake

Настрокйка кросс-компиляции
---------------------------

Скопируйте settings.cmake.example в корне пректа в settings.cmake и подредактируйте под ваше окружение.

Переменная **V2R_SDK_ROOT** должна указывать на папку, гду установлен актуальный Virt2real SDK, с ядром и компиляторами.

Если хотите, чтобы построенные файлы автоматически заливались на виртурилку, задайте сетевое имя в переменной **V2R_HOSTANME**.

**V2R_DEMO_PATH** задаёт путь, куда файлы будут скопированы. Если он не задана,то файлы будут скопированы в домашний каталог пользователя.

Исходники
---------

    #> mkdir -p /path/to/folder/wehere/demos/will/be/saved
    #> git clone https://github.com/eagafonov/v2r-demos.git
    #> git submodule init
    #> git submodule update

Сабмодулями подтягивается код ArduPilot (TODO Сделать опциональным)

Построение
----------

    #> cd v2r-demos
    #> mkdir build
    #> cd build
    #> cmake ..
    #> make


Список доступных приложений
===========================

Hello, world! (simple/hello.cpp)
-----------------------------------

Классика жанра. С++.

simple/minimal.c
-----------------------------------

Самая маленькая программа на С, которая вылетает с ошибкой.
Притырено отсюда <http://habrahabr.ru/post/181021>

ADC ioctl test (adc/ioctl-test.c)
---------------------------------

Демонстрация взаимодействия с ADC использую IOCTL. Пока в официальном ядре v2r поддержки ioctl драйвером ADC нет .

Реализовано тут <https://github.com/eagafonov/v2r-linux-davinci/commits/v2r-adc-ioctl>)
