# SkimoSE-addons

## Vývojové nástroje
Veškeré současně uveřejněné vývojové nástroje používají jazyk BASH (Linuxové skripty), lze je však například pomocí Git Bash spustit i na Windowsu.

### Vytvoření nového modulu
Vytvoření modulu si můžeš usnadnit spuštěním souboru `make.sh` - ten se tě zeptá na jednoduché otázky a vytvoří podle vzoru ve složce `default` novou složku s předpřipravenými soubory.

### Kompilace skriptů
Spuštěním souboru `compile.sh` se kompilují všechny soubory s koncovkou `.lua` do LUAC, ty jsou mimochodem zapsány v gitignore.

### Přepínání vývojového prostředí
Pomocí souborů `mode-dev.sh` a `mode-prod.sh` lze přepínat mezi produkčním a vývojovým prostředím (v produkčním se pozmění `meta.xml` soubory tak, aby používali šifrované soubory, naopak ve vývojovém se používají pouze nešifrované soubory - to zajišťuje bezpečí na produkci a rychlost při vývoji).
