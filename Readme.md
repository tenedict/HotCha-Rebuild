# 🏆 [프로젝트 이름]

> SwiftUI 기반 iOS 애플리케이션  
> 간략한 프로젝트 설명을 여기에 작성하세요.

---

## 📂 프로젝트 구조

MyApp

├── 📂 Models            # 데이터 모델 정의

├── 📂 Views             # SwiftUI 화면(View) 파일

├── 📂 ViewModels        # 비즈니스 로직 (MVVM 패턴)

├── 📂 Components        # 재사용 가능한 UI 컴포넌트

├── 📂 Services          # 네트워크, 데이터 처리

├── 📂 Utils             # 유틸리티, 확장 기능

├── 📂 Resources         # 이미지, 로컬라이제이션 파일

└── 📂 App               # App 진입점 및 설정 파일

---
# 📌 개발 규칙

## 1️⃣ 브랜치 전략
    - main : 배포 버전
    - develop : 개발 브랜치 (기능 개발 후 PR 머지)
    - feature/xxx : 새로운 기능 개발 (feature/login-ui)
    - fix/xxx : 버그 수정 (fix/crash-issue)

## 2️⃣ 커밋 컨벤션
    - feat: : 새로운 기능 추가
    - fix: : 버그 수정
    - refactor: : 코드 리팩토링
    - chore: : 빌드 설정 변경, 패키지 관리
    - docs: : 문서 수정 (README 등)
    - style: : 코드 스타일 변경 (세미콜론, 포맷팅 등)
    
## 3️⃣ 코드 컨벤션 (SwiftLint 적용)
    - 네이밍 컨벤션: CamelCase 사용
    - 들여쓰기: 4 spaces
    - @StateObject 사용 시 private 접근 제어자 적용
    - ObservableObject는 final class로 선언
    - 뷰 파일명은 ScreenNameView.swift 형태로 작성 (예: HomeView.swift)
    - 색상과 폰트는 각각 에셋과 커스텀폰트만 사용

