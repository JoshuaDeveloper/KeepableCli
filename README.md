# Keepable CLI

## Start the program

```
ruby keepable.rb
#############################
#    Welcome to Keepable    #
#############################
login | create_user | exit
>
```

- Error message when invalid option: "Invalid option"

## Create user

```
> create_user
username: Jhon
password: 123456
+----+-------+------+--------+
|        Jhon's Notes        |
+----+-------+------+--------+
| ID | Title | Body | Pinned |
+----+-------+------+--------+
+----+-------+------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- `username` required. Error message: "Can't be blank"
- `password` required and minimum 6 characters. Error message: "Minimum 6 characters"

## Logout

```
> logout
#############################
#    Welcome to Keepable    #
#############################
login | create_user | exit
>
```

## Login

```
> login
username: codeable
password: 123456
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- Each note should be colorized with its respective color.
- When invalid login show server error: "Incorrect email or password"

## Create note

```
> create
title: André
body: ~ == colita de chancho == virgulilla
Select a color (default: white)
white | red | green | yellow | blue | magenta | cyan
> blue
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
| 48 | André        | ~ == colita de chancho == virgulilla                                        |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- `title` required. Error message: "Can't be blank"
- `body` optional
- `color` optional but one of [white, red, green, yellow, blue, magenta, cyan] if supplied. Error message: "Invalid option"

## Update note

```
> updade 48
Invalid option
> update 48
title: André
body: Mandame un ticket
Select a color (default: white)
white | red | green | yellow | blue | magenta | cyan
> red
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
| 48 | André        | Mandame un ticket                                                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- Optional fields left blank shouldn't modify the note

## Delete note

```
> delete 48
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- The server doesn't delete the note the first try, just mark it as "deleted". The note should go to the trash

## Trash

```
> trash
+----+--------+-------------------+--------+
|             codeable's Notes             |
+----+--------+-------------------+--------+
| ID | Title  | Body              | Pinned |
+----+--------+-------------------+--------+
| 48 | André  | Mandame un ticket |        |
+----+--------+-------------------+--------+
delete ID | recover ID | back
>
```

## Recover note

```
> recover 48
+----+-------+------+--------+
|      codeable's Notes      |
+----+-------+------+--------+
| ID | Title | Body | Pinned |
+----+-------+------+--------+
+----+-------+------+--------+
delete ID | recover ID | back
>
```

## Go back to notes

```
> back
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
| 48 | André        | Mandame un ticket                                                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

## Delete (definitively)  a note

```
> delete 48
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
> trash
+----+--------+-------------------+--------+
|             codeable's Notes             |
+----+--------+-------------------+--------+
| ID | Title  | Body              | Pinned |
+----+--------+-------------------+--------+
| 48 | André | Mandame un ticket |        |
+----+--------+-------------------+--------+
delete ID | recover ID | back
> delete 48
+----+-------+------+--------+
|      codeable's Notes      |
+----+-------+------+--------+
| ID | Title | Body | Pinned |
+----+-------+------+--------+
+----+-------+------+--------+
delete ID | recover ID | back
> back
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

## Toggle (pin/unpin) a note

```
> toggle 41
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 41 | Chrysippus   | The unexamined life is not worth living.                                    | true   |
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- The pinned notes should be listed at the top.

```
> toggle 41
+----+--------------+-----------------------------------------------------------------------------+--------+
|                                             codeable's Notes                                             |
+----+--------------+-----------------------------------------------------------------------------+--------+
| ID | Title        | Body                                                                        | Pinned |
+----+--------------+-----------------------------------------------------------------------------+--------+
| 38 | Zeno of Elea | There was never a genius without a tincture of madness.                     |        |
| 46 | Solon        | Dignity does not consist in possessing honors, but in deserving them.       |        |
| 45 | Zeno of Elea | The secret to humor is surprise.                                            |        |
| 44 | Aristotle    | There was never a genius without a tincture of madness.                     |        |
| 43 | Pythagoras   | Most people would rather give than get affection.                           |        |
| 42 | Archimedes   | It is impossible to begin to learn that which one thinks one already knows. |        |
| 41 | Chrysippus   | The unexamined life is not worth living.                                    |        |
| 40 | Epicurus     | The virtue of justice consists in moderation, as regulated by wisdom.       |        |
| 39 | Galen        | The mind is not a vessel to be filled but a fire to be kindled.             |        |
| 47 | Democritus   | Most people would rather give than get affection.                           |        |
+----+--------------+-----------------------------------------------------------------------------+--------+
create | update ID | delete ID | toggle | trash | logout
>
```

- Error message when invalid ID: "Not found"
