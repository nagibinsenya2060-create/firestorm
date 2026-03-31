# Конкуренты: сегменты и цены

## Контекст

- Проект: `Firestorm`
- Продукт: `Префлоп тренажёр`
- Цель файла: быстро видеть, на какие сегменты ориентированы конкуренты и как у них устроены цены
- Дата фиксации: `23 марта 2026`

## Быстрые ссылки на конкурентов

- `FreeBetRange` — <https://shop.gipsyteam.ru/freebetrange>
- `ICMIZER 3` — <https://shop.gipsyteam.ru/icmizer-3>
- `PreflopHero MTT` — <https://shop.gipsyteam.ru/preflophero-mtt>
- `PokerIQ` — <https://pokeriq.pro/>
- `ЁпрстПокер` — <http://yoprstpoker.ru/shop/>
- `GTOBase` — <https://gtobase.com/ru/#Prices>
- `GTO Wizard` — <https://shop.gipsyteam.ru/gto-wizard>
- `Hand2Note Guide Preflop GTO Trainer` — <https://hand2noteguide.com/ru/poker/free-poker-tools/preflop-gto-trainer/>
- `CalcGalaxy Preflop Poker Tester` — <https://www.calcgalaxy.ru/preflop-poker-tester>
- `Бесплатный тренажёр из темы GipsyTeam` — <https://forum.gipsyteam.ru/index.php?viewtopic=171602>

---

## Problem Statement

- Ожидалось: разделить конкурентов по сегментам, на которые они целятся, и собрать по ним компактную ценовую таблицу.
- Фактически: данные по конкурентам уже есть, но они распределены по отдельным файлам и не сведены в одну управленческую картину.
- Граница задачи: это рабочая стратегическая сводка по уже собранным публичным данным, а не финальный market map после интервью и checkout-аудита.

Уверенность: 84% -> 97% — все сегменты и цены собраны из уже зафиксированных конкурентных документов.

## Input

- Есть база конкурентов по `Firestorm`
- Есть матрица `функционал / стоимость`
- Есть понимание типов конкурентов: платформы, узкие тренажёры, бесплатные тренажёры, utility и DIY-решения

## Output

- Создан единый файл с сегментацией конкурентов.
- Создана отдельная таблица цен.
- Зафиксировано, какие сегменты заняты сильнее всего и где у `Firestorm` есть окно.

## Outcome

- По рынку стало проще принимать продуктовые решения.
- Можно быстрее понять, с кем мы реально конкурируем в каждом сегменте.
- Будет проще обсуждать с Сашей и цену, и целевой сегмент, и позиционирование.

---

## 1. Конкуренты по сегментам

### Сегмент A. MTT-регуляры и игроки, которым нужен прикладной префлоп-тренажёр

Самые релевантные конкуренты:
- `PreflopHero MTT`
- `Hand2Note Guide Preflop GTO Trainer`
- `FreeBetRange`
- `GTO Wizard`
- `ICMIZER 3`

Комментарий:
- Здесь strongest direct-fit для узкого тренировочного сценария дают `PreflopHero MTT` и бесплатный `Hand2Note Guide trainer`.
- `FreeBetRange`, `GTO Wizard`, `ICMIZER 3` закрывают сегмент шире, но тоже перетягивают этих пользователей.

### Сегмент B. 6-max cash-игроки, которым нужен прикладной префлоп-тренажёр

Самые релевантные конкуренты:
- `ЁпрстПокер`
- `PokerIQ`
- `FreeBetRange`
- `GTO Wizard`
- `GTOBase`

Комментарий:
- По узкому тренажёрному сценарию сильнее всего здесь смотрятся `ЁпрстПокер` и `PokerIQ`.
- По платформенному сценарию — `FreeBetRange`, `GTO Wizard`, `GTOBase`.

### Сегмент C. Продвинутые игроки, которым нужна платформа: viewer + trainer + analysis

Самые релевантные конкуренты:
- `GTO Wizard`
- `GTOBase`
- `FreeBetRange`
- `ICMIZER 3`

Комментарий:
- Это сегмент больших GTO- и analysis-платформ.
- Для `Firestorm` здесь опасно идти в лоб без очень ясной причины.

### Сегмент D. Ученики школ, фондов и тренерских систем

Самые релевантные конкуренты:
- `FreeBetRange`
- `GTO Wizard`
- `PreflopHero MTT`
- `Hand2Note Guide Preflop GTO Trainer`

Комментарий:
- `FreeBetRange` и `GTO Wizard` сильны инфраструктурой.
- `PreflopHero` ближе к прикладной тренировке.
- Бесплатный `Hand2Note Guide` опасен как free-entry слой.

### Сегмент E. Самостоятельные игроки микролимитов, которые хотят недорогое или бесплатное решение

Самые релевантные конкуренты:
- `PokerIQ`
- `ЁпрстПокер`
- `PreflopHero MTT`
- `Hand2Note Guide Preflop GTO Trainer`
- `CalcGalaxy`
- `Бесплатный префлоп-тренажёр из темы GipsyTeam`

Комментарий:
- Здесь очень сильна конкуренция дешёвых и бесплатных решений.
- Для `Firestorm` именно в этом сегменте особенно критичны `free/trial`, onboarding и perceived value.

### Сегмент F. Пользователи, которым важен быстрый бесплатный utility-value

Самые релевантные конкуренты:
- `CalcGalaxy`
- `Бесплатный префлоп-тренажёр из темы GipsyTeam`
- `Hand2Note Guide Preflop GTO Trainer`

Комментарий:
- Это не всегда прямые конкуренты по продукту, но сильные конкуренты по первому касанию и по цене `0`.

---

## 2. Таблица цен по конкурентам

### Быстрый срез: минимальная цена входа

| Конкурент | Ссылка | Бесплатно / trial | Минимальная платная цена входа | Рабочая платная цена | Комментарий |
|---|---|---:|---:|---:|---|
| `FreeBetRange` | [Открыть](https://shop.gipsyteam.ru/freebetrange) | `€0` | `от €13.2/мес` | `€29/мес` | `Pro` и `Elite`, также встречается `$19/$29` |
| `ICMIZER 3` | [Открыть](https://shop.gipsyteam.ru/icmizer-3) | `Free` | `$18/мес` | `$33/мес` | `Basic` и `Pro` |
| `PreflopHero MTT` | [Открыть](https://shop.gipsyteam.ru/preflophero-mtt) | `Trial` | `$20/мес` | `$15/мес` | рабочая цена при покупке на `3 месяца` |
| `PokerIQ` | [Открыть](https://pokeriq.pro/) | `7-day trial` | `около $9/мес` | `$60/год` | точный live-pricing подтверждён частично |
| `ЁпрстПокер` | [Открыть](http://yoprstpoker.ru/shop/) | `Trial` | `700 ₽/мес` | `1300 ₽/3 мес` | также `1900 ₽/6 мес`, `3000 ₽/12 мес` |
| `GTOBase` | [Открыть](https://gtobase.com/ru/#Prices) | `Free` | `от $20–26/мес` | `от $50/мес` | `Basic` и `Pro`, `Ultimate` от `$100/мес` |
| `GTO Wizard` | [Открыть](https://shop.gipsyteam.ru/gto-wizard) | `$0` | `от $39/мес` | `Premium+` | цена зависит от дисциплины и плана |
| `Hand2Note Guide Preflop GTO Trainer` | [Открыть](https://hand2noteguide.com/ru/poker/free-poker-tools/preflop-gto-trainer/) | `0` | — | — | бесплатный |
| `CalcGalaxy Preflop Poker Tester` | [Открыть](https://www.calcgalaxy.ru/preflop-poker-tester) | `0` | — | — | бесплатный |
| `Бесплатный тренажёр из темы GipsyTeam` | [Открыть](https://forum.gipsyteam.ru/index.php?viewtopic=171602) | `0` | — | — | бесплатный |

### Полная таблица по планам: одна строка = один тариф

| Конкурент | План | Цена | Период | Тип |
|---|---|---:|---|---|
| `FreeBetRange` | `Free` | `€0` | — | free |
| `FreeBetRange` | `Pro` | `от €13.2` | мес | paid |
| `FreeBetRange` | `Pro` | `$19` | мес | paid |
| `FreeBetRange` | `Elite` | `от €29` | мес | paid |
| `FreeBetRange` | `Elite` | `$29` | мес | paid |
| `ICMIZER 3` | `Free` | `0` | — | free |
| `ICMIZER 3` | `Basic` | `$18` | мес | paid |
| `ICMIZER 3` | `Basic` | `$37` | 3 мес | paid |
| `ICMIZER 3` | `Basic` | `$100` | 12 мес | paid |
| `ICMIZER 3` | `Pro` | `$33` | мес | paid |
| `ICMIZER 3` | `Pro` | `$67` | 3 мес | paid |
| `ICMIZER 3` | `Pro` | `$180` | 12 мес | paid |
| `ICMIZER 3` | `MTT Coach Add-on` | `$10` | пакет | add-on |
| `PreflopHero MTT` | `Trial` | `0` | — | trial |
| `PreflopHero MTT` | `Premium` | `$20` | мес | paid |
| `PreflopHero MTT` | `Premium` | `$15` | мес при 3 мес | paid |
| `PreflopHero MTT` | `Premium` | `$12.5` | мес при 12 мес | paid |
| `PokerIQ` | `Trial` | `0` | 7 дней | trial |
| `PokerIQ` | `Paid` | `около $9` | мес | paid |
| `PokerIQ` | `Paid` | `$60` | год | paid |
| `ЁпрстПокер` | `Trial` | `0` | — | trial |
| `ЁпрстПокер` | `Лицензия` | `700 ₽` | 1 мес | paid |
| `ЁпрстПокер` | `Лицензия` | `1300 ₽` | 3 мес | paid |
| `ЁпрстПокер` | `Лицензия` | `1900 ₽` | 6 мес | paid |
| `ЁпрстПокер` | `Лицензия` | `3000 ₽` | 12 мес | paid |
| `ЁпрстПокер` | `Внесение чартов` | `5000 ₽` | услуга | service |
| `ЁпрстПокер` | `Консультация` | `2000 ₽` | услуга | service |
| `GTOBase` | `Free` | `0` | — | free |
| `GTOBase` | `Basic` | `от $20` | мес | paid |
| `GTOBase` | `Basic` | `от $26` | мес | paid |
| `GTOBase` | `Pro` | `от $50` | мес | paid |
| `GTOBase` | `Ultimate` | `от $100` | мес | paid |
| `GTO Wizard` | `Free` | `$0` | — | free |
| `GTO Wizard` | `Starter` | `от $39` | мес | paid |
| `GTO Wizard` | `Premium` | `не зафиксировано` | — | paid |
| `GTO Wizard` | `Elite` | `не зафиксировано` | — | paid |
| `GTO Wizard` | `Ultra` | `не зафиксировано` | — | paid |
| `Hand2Note Guide Preflop GTO Trainer` | `Free` | `0` | — | free |
| `CalcGalaxy Preflop Poker Tester` | `Free` | `0` | — | free |
| `Бесплатный тренажёр из темы GipsyTeam` | `Free` | `0` | — | free |

### Если нужен самый короткий ценовой ориентир

| Кластер | Конкуренты |
|---|---|
| `Бесплатно` | `Hand2Note Guide trainer`, `CalcGalaxy`, `Google Sheets trainer`, `FreeBetRange Free`, `GTO Wizard Free`, `GTOBase Free`, `ICMIZER Free` |
| `До $20/мес` | `PokerIQ`, `PreflopHero`, `ICMIZER Basic`, `FreeBetRange Pro` |
| `От $20 до $40/мес` | `FreeBetRange Elite`, `ICMIZER Pro`, `GTO Wizard Starter` |
| `От $50/мес` | `GTOBase Pro`, `GTOBase Ultimate`, `GTO Wizard Premium+` |

---

## 3. Быстрые выводы по ценовым кластерам

### Бесплатные конкуренты

- `Hand2Note Guide Preflop GTO Trainer`
- `CalcGalaxy`
- `Бесплатный тренажёр из темы GipsyTeam`
- `GTO Wizard Free`
- `FreeBetRange Free`
- `GTOBase Free`
- `ICMIZER Free`

Вывод:
- Бесплатный слой на рынке очень сильный.
- Если у `Firestorm` не будет внятного free/trial entry, это повышает риск слабой верхней воронки.

### Дешёвые тренажёры

- `PokerIQ`
- `ЁпрстПокер`
- `PreflopHero MTT`

Вывод:
- Это главный ценовой прессинг для `Firestorm`, если мы идём в массовый B2C.

### Средний платформенный сегмент

- `FreeBetRange Pro`
- `GTO Wizard Starter`
- `ICMIZER Basic`

Вывод:
- Здесь пользователь уже ожидает не просто тренажёр, а более широкое решение.

### Дорогой платформенный сегмент

- `GTOBase Pro / Ultimate`
- `GTO Wizard Premium / Elite / Ultra`
- `ICMIZER Pro`
- `FreeBetRange Elite`

Вывод:
- Здесь конкуренция идёт по ширине value, глубине анализа и бренду.

---

## 4. Где рынок уже занят сильнее всего

### Самый плотный сегмент

- дешёвые и бесплатные решения для самостоятельных игроков

Почему:
- много дешёвых тренажёров
- много бесплатных utility и trainer-альтернатив
- пользователь легко откладывает покупку

### Самый сильный платформенный слой

- `GTO Wizard`
- `GTOBase`
- `FreeBetRange`

Почему:
- сильные бренды
- широкая функциональность
- платформа, а не только один use case

### Самое сильное окно для Firestorm

- узкий, очень понятный, современный префлоп-тренажёр
- с быстрым первым value
- с хорошим onboarding
- с нормальным free/trial слоем
- с понятной моделью оплаты для СНГ

---

## 5. Практическая интерпретация для Firestorm

- Если мы хотим идти в массовый B2C, нам надо чётко понимать, как мы выигрываем у `PokerIQ`, `ЁпрстПокер`, `PreflopHero` и бесплатных альтернатив.
- Если мы хотим идти в платформенный сценарий, надо понимать, как мы вообще будем отличаться от `FreeBetRange`, `GTO Wizard`, `GTOBase`.
- Самое реалистичное окно сейчас выглядит так:
- выбрать один приоритетный сегмент
- собрать сильный core training loop
- дать пользователю быстрое value
- не проигрывать по оплате

---

## Checklist Status

- `Конкуренты разделены по сегментам` — Сделано
- `Таблица цен собрана` — Сделано
- `Ценовые кластеры выделены` — Сделано
- `Окно для Firestorm сформулировано` — Сделано
