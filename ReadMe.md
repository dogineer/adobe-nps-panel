# **Premiere Pro CNPS panel**

## **0. 개요**
어도비 CEP(Adobe Common Extensibility Platform) 웹 엔진 프레임워크를 통해<br> 
Adobe Creative Cloud 애플리케이션에서 확장 기능을 Windows 및 macOS에서 사용되도록 개발되었습니다.

<br>

## **1. 설치 구성**
---
1.Chrome 브라우저 (디버그 워크플로를 위한 Chrome 브라우저)<br>
2.프리미어 2022 (CEP HTML 확장을 지원하는 Adobe Creative Cloud 애플리케이션)<br>
3.CNPS 플러그인<br>

*참고: 플러그인 확장을 성공적으로 구성할려면 다음 애플리케이션이 있어야 합니다.*
<br>
<br>

## **2. 패널 설치하기**

---
### **[자동] mac-installer.sh을 통한 설치**
- mac 또는 리눅스에서 설치 할 경우 밑의 명령어를 터미널(sudo su)에서 작성 후 mac-installer을 실행해주세요.

```sh
sudo su
chmod +x mac-installer.sh
sh mac-installer.sh
```
*참고: sh 스크립트가 진행이 끝나면 '3.서명되지 않는 패널 로드 사용'은 하지 않아도 됩니다. (스크립트에 포함되어 있습니다.)*
<br>
<br>
### **[수동] 수동으로 파일 설치**

- CNPS 폴더를 밑의 경로에 넣어주세요.

```html
Windows:    C:\Program Files (x86)\Common Files\Adobe\CEP\extensions
Mac:        /Library/Application Support/Adobe/CEP/extensions
```
*참고: 전역 설치시 USER 라이브러리가 아닌. Root의 라이브러리에 설치해야합니다.*
<br>
<br>

## **3. 서명되지 않은 패널 로드 사용**
---

### **[MAC]**
- 터미널에서 작성해주세요.
```html
defaults write /Users/<username>/Library/Preferences/com.adobe.CSXS.11.plist PlayerDebugMode 1
```

### **[WINDOWS]**
- 윈도우는 레지스트리를 콘솔창이 아닌 레지스트리를 변경하셔야합니다.
```html
regedit > HKEY_CURRENT_USER/Software/Adobe/CSXS.11 
그런 다음 값이 "1"인 "문자열" 유형의 새 항목 PlayerDebugMode를 추가합니다.
```

*참고: Premiere Pro 23.x는 CEP11을 통합하므로 서명되지 않은 패널이 있더라도
(CEP10까지) 이전에 로드하면, 이 단계를 다시 수행해야 하지만 키 CSXS.11에 대해서는 수행해야 합니다.*