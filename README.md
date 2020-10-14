# SkimoSE-addons

## Soubory .SSE
Soubory uložené s koncovkou `.sse` fungují stejně, jako obyčejné LUA soubory, budou však na serveru automaticky kompilovány do LUAC.

## Vývojové nástroje
Veškeré současně uveřejněné vývojové nástroje používají jazyk BASH (Linuxové skripty), lze je však například pomocí Git Bash spustit i na Windowsu.

### Kompilace skriptů
Spuštěním souboru `compile.sh` se kompilují všechny soubory s koncovkou `.sse` do LUAC a uloží se jako `.ssec` soubory, ty jsou mimochodem zapsány v gitignore.

### Přepínání vývojového prostředí
Pomocí souborů `mode-dev.sh` a `mode-prod.sh` lze přepínat mezi produkčním a vývojovým prostředím (v produkčním se pozmění `meta.xml` soubory tak, aby používali šifrované soubory, naopak ve vývojovém se používají pouze nešifrované soubory - to zajišťuje bezpečí na produkci a rychlost při vývoji).
