# GitHub release instructions

## 1. Initialize repository

```cmd
cd /d C:\path\to\DJI_GPX_Extractor

git init
git add .
git commit -m "Initial release v0.8"
```

## 2. Create GitHub repository

With GitHub CLI:

```cmd
gh auth login
gh repo create DJI_GPX_Extractor --public --source=. --remote=origin --push
```

For a private repository:

```cmd
gh repo create DJI_GPX_Extractor --private --source=. --remote=origin --push
```

## 3. Build EXE

```cmd
build.bat
```

or:

```cmd
build_win7_compatible.bat
```

## 4. Prepare release asset

```cmd
copy dist\DJI_GPX_Extractor.exe DJI_GPX_Extractor_v0.8_windows.exe
```

## 5. Create tag and release

```cmd
git tag v0.8
git push origin v0.8

gh release create v0.8 DJI_GPX_Extractor_v0.8_windows.exe ^
  --title "DJI GPX Extractor v0.8" ^
  --notes-file release_notes_v0.8.md
```

## 6. Future update pattern

```cmd
git add .
git commit -m "Release v0.9"
git tag v0.9
git push
git push origin v0.9
gh release create v0.9 DJI_GPX_Extractor_v0.9_windows.exe ^
  --title "DJI GPX Extractor v0.9" ^
  --notes-file release_notes_v0.9.md
```
