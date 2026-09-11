# 🤖 덕소중학교 마퀸 제어 - AI 핸드포즈 프로젝트

MediaPipe와 p5.js를 이용한 실시간 손동작 인식 웹앱입니다. 손포즈로 마이크로비트의 마퀸 로봇을 자유롭게 조작할 수 있습니다!

## 🎯 주요 기능

- **👋 손동작 학습**: 5가지 마퀸 조작 제스처를 AI 모델에 학습
- **📊 실시간 인식**: 학습된 손동작을 실시간으로 인식
- **🤖 마퀸 제어**: 손포즈로 마이크로비트의 마퀸 로봇 조작
- **📱 블루투스 연결**: Web Bluetooth API로 마이크로비트와 연결

## 🎮 마퀸 조작 명령

| 제스처 | 명령 | 동작 |
|--------|------|------|
| 👐 | `forward` | ⬆️ 앞으로 전진 |
| ✊ | `backward` | ⬇️ 뒤로 후진 |
| ✌️ | `left` | ⬅️ 왼쪽 회전 |
| ☝️ | `right` | ➡️ 오른쪽 회전 |
| ✋ | `stop` | ⏹️ 즉시 정지 |

## 🚀 시작하기

1. **웹앱 접속**: [GitHub Pages 배포 링크](https://jt-lim.github.io/ai-handpose-recognition/)
2. **카메라 권한 허용** 🎥
3. **제스처 학습**: 다음 5가지를 각각 학습시키기
   - `forward` (앞으로 가는 손동작)
   - `backward` (뒤로 가는 손동작)
   - `left` (왼쪽으로 도는 손동작)
   - `right` (오른쪽으로 도는 손동작)
   - `stop` (멈추는 손동작)
4. **마이크로비트 연결**: "마이크로비트 연결" 버튼 클릭
5. **마퀸 조작 시작**: "마퀸 조작 시작" 버튼 클릭
6. **즐기기**: 학습한 손동작을 취하면 마퀸이 움직여요! 🎉

## 로컬 수정 및 배포

별도 패키지 설치나 빌드 없이 HTML, CSS, JavaScript를 직접 수정합니다.

```sh
make preview
```

브라우저에서 http://localhost:8000 을 열어 확인합니다. 서버는 `Ctrl+C`로 종료합니다.
화면 구조는 `index.html`, 디자인은 `style.css`, 손 인식과 로봇 제어는 `sketch.js`에서 수정합니다.

변경을 확인한 뒤 필요한 파일을 커밋하고 배포합니다.

```sh
git diff --check
git add index.html style.css sketch.js
git commit -m "Update handpose app"
make deploy
```

`make deploy`는 현재 브랜치가 `main`이고 작업 폴더에 미커밋 변경이 없을 때만
`origin/main`으로 푸시합니다. 문서나 새 파일을 변경했다면 해당 파일도 먼저 커밋하세요.
GitHub Pages 반영에는 수 분이 걸릴 수 있습니다.

배포 주소: https://jt-lim.github.io/ai-handpose-recognition/

## 📦 기술 스택

- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **시각화**: p5.js v1.6.0
- **손동작 인식**: MediaPipe HandLandmarker
- **머신러닝**: KNN (K-Nearest Neighbors) 알고리즘
- **통신**: Web Bluetooth API (UART)
- **UI/UX**: Pretendard 폰트, 반응형 디자인

## ⚙️ 필요 요구사항

### 하드웨어
- 최신 브라우저를 지원하는 컴퓨터/태블릿
- 웹캠 (내장 또는 외장)
- BBC 마이크로비트 (블루투스 모듈 포함)
- DFRobot 마퀸 로봇 플랫폼
- 마이크로비트용 배터리 팩

### 소프트웨어
- 최신 브라우저 (Chrome, Edge, Firefox 권장)
- MakeCode for Micro:bit (마이크로비트 프로그래밍용)

## 🔧 MakeCode 프로그램 설치

자세한 설치 방법은 [MICROBIT_MAKECODE.md](./MICROBIT_MAKECODE.md)를 참고하세요.

## 📚 학습 가이드

### 초보자용
1. [README.md](./README.md) - 기본 사용법
2. [MICROBIT_MAKECODE.md](./MICROBIT_MAKECODE.md) - 마이크로비트 프로그래밍

### 심화
- 손동작 인식 정확도 향상 (더 많은 학습 데이터)
- 마퀸 속도 조정 (MakeCode 수정)
- 추가 제스처 정의

## 🎓 교육 활용

이 프로젝트는 다음 주제를 학습할 수 있습니다:
- 🤖 AI/머신러닝 (손동작 인식)
- 📱 블루투스 통신
- 🎮 로봇 제어
- 💻 웹 프로그래밍

## 📄 라이선스

© 2024 Deokso Middle School. All rights reserved.

## 🔗 관련 링크

- [BBC Micro:bit 공식 사이트](https://microbit.org/ko/)
- [MakeCode 온라인 에디터](https://makecode.microbit.org)
- [DFRobot 마퀸](https://www.dfrobot.com/wiki/index.php/Maqueen_Microbit_Robot_Platform_(DF-ROB0057))
- [MediaPipe 공식 문서](https://mediapipe.dev/)

## ❓ FAQ

**Q: 블루투스 연결이 안 됩니다.**  
A: 마이크로비트를 컴퓨터에 재연결하고 페이지를 새로고침 해주세요.

**Q: 손동작이 인식되지 않습니다.**  
A: 밝은 환경에서 카메라 앞에 손을 명확하게 보여주세요. 더 많은 제스처 데이터를 학습시키면 정확도가 향상됩니다.

**Q: 마퀸이 움직이지 않습니다.**  
A: 마이크로비트 전원, 마퀸의 배터리, 모터 연결을 확인하세요.

**Q: 속도를 조정하고 싶습니다.**  
A: [MICROBIT_MAKECODE.md](./MICROBIT_MAKECODE.md)의 커스터마이징 섹션을 참고하세요.
