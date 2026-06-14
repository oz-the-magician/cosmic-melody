# Cosmic Melody Date — GitHub Pages / VS Code prototype

Статический прототип генератора «Космическая мелодия даты».

Работает как обычный сайт:

- `index.html`
- `samples/` — локальные WAV-сэмплы инструментов
- `.nojekyll` — чтобы GitHub Pages отдавал файлы как статический сайт без Jekyll

## Запуск в VS Code

### Вариант 1: Live Server

1. Открой папку проекта в VS Code.
2. Установи расширение **Live Server**, если его ещё нет.
3. Нажми правой кнопкой по `index.html` → **Open with Live Server**.

### Вариант 2: без расширений, через Python

В терминале VS Code из корня проекта:

```bash
python3 -m http.server 8765
```

Потом открой:

```text
http://localhost:8765
```

На Windows иногда команда такая:

```bash
python -m http.server 8765
```

## Публикация на GitHub Pages

1. Создай новый репозиторий на GitHub, например `cosmic-melody`.
2. Загрузи в него все файлы из этой папки.
3. Открой репозиторий → **Settings** → **Pages**.
4. В разделе **Build and deployment** выбери:
   - Source: **Deploy from a branch**
   - Branch: `main`
   - Folder: `/ (root)`
5. Нажми **Save**.
6. Через пару минут сайт будет доступен по адресу вида:

```text
https://USERNAME.github.io/cosmic-melody/
```

## Важно

На GitHub Pages samples будут загружаться как обычные статические WAV-файлы. Интернет нужен только пользователю для открытия сайта.

Для локального запуска не открывай просто `index.html` двойным кликом, если браузер блокирует загрузку samples. Используй Live Server или `python3 -m http.server`.
