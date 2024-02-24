# DFE-NEO v2

## Отключение шифрования /data для Android

### Описание

DFE-NEO v2 - это скрипт, разработанный для отключения принудительного шифрования раздела /userdata на устройствах Android. Он предназначен для обеспечения простого переключения между ROMs и доступа к данным в TWRP, не требуя форматирования данных и удаления важных файлов пользователя, таких как ./Download, ./DCIM и прочие, расположенные во внутренней памяти устройства.

### Использование

На данный момент скрипт можно использовать только в качестве установочного файла через TWRP.

1. Установите `dfe-neo.zip`.
2. Выберите нужную конфигурацию.
3. После успешной установки, если ваши данные зашифрованы, вам необходимо отформатировать данные:
   - Зайдите в меню TWRP "Меню очистки" ("Wipe").
   - Выберите "format data".
   - Подтвердите выполнение операции, введя "yes".

## Примечание

Внимание: перед использованием скрипта убедитесь, что вы понимаете, как он работает, и сделайте резервную копию ваших данных для предотвращения потери информации.

## Плюсы и минусы отключения шифрования /data

### Плюсы

- **Упрощение резервного копирования и восстановления данных**: При отключенном шифровании данные в /data проще резервировать и восстанавливать. Это упрощает ситуации перепрошивки устройства, восстановления после сбоя или переноса данных на новое устройство.
- **Упрощение смены прошивок**: Отключение шифрования предотвращает необходимость полного форматирования данных при смене прошивки, что экономит время и упрощает процесс перехода между прошивками.
- **Доступ к данным в недоделанном TWRP**: Отключение шифрования позволяет получить доступ к данным в недоделанных или несовершенных версиях TWRP, которые не поддерживают расшифровку зашифрованных данных.

### Минусы

- **Уязвимость для утери данных**: При отключенном шифровании данные становятся уязвимыми для несанкционированного доступа. Это увеличивает риск доступа к вашим личным данным злоумышленниками.
- **Повышенный риск утери устройства**: В случае утери или кражи устройства, данные могут быть украдены или скомпрометированы без необходимости расшифровки, что увеличивает риск утери конфиденциальных данных.
- **Уязвимость для обхода защиты**: Отключение шифрования также увеличивает уязвимость для обхода защиты. Например, удаление файла блокировки может быть проще, что позволяет злоумышленнику получить доступ к устройству без необходимости ввода пароля.

Важно внимательно взвесить все плюсы и минусы перед решением отключить шифрование данных на устройстве. Безопасность и удобство использования должны быть уравновешены в зависимости от ваших потребностей и угроз, с которыми вы сталкиваетесь.


## Использованные бинарники

- **Magisk, Busybox, Magiskboot**: Взято с последней версии [Magisk](https://github.com/topjohnwu/Magisk).
- **avbctl, bootctl, snapshotctl, toolbox, toybox, make_ext4fs**: Скомпилированы из исходного кода Android.
- **lptools_new**: Для создания бинарника использовался открытый исходный код с [GitHub](https://github.com/leegarchat/lptools_new), собственный код утилиты также включен.
- **Bash**: Взят статичный бинарник с [Debian Packages](https://packages.debian.org/unstable/bash-static).
- **SQLite3**: Взят из [репозитория](https://github.com/rojenzaman/sqlite3-magisk-module).

