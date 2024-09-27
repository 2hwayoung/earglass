# 크라우드 소싱 데이터 수집 사이트

> 연세대학교 컴퓨터과학과 2021-1 데이터베이스 프로젝트

## 1. Overview

이 프로젝트는 관리자가 수집하고자 하는 데이터에 대한 간략한 소개와 스키마를 등록 하면, 해당하는 데이터를 가지고 있는 회원들이 데이터를 제출할 수 있는 시스템을 개발하는 것을 목표로 합니다.

- **기간**: 2020.09 - 2020.12
- **특징**: 여러 유형의 사용자(관리자, 제출자, 평가자)들이 데이터 작업을 관리하고, 참여하고, 평가가능. Flask 웹 프레임워크와 MariaDB 데이터베이스와 사용

  
## 2. Team
- Team name: Earglass
- **Frontend** 이학림, 정규식 
- **Backend** 유승수, 정시원
- **Database** 노연수, 이화영

## 3. Skills
- AWS EC2 1대
- Python Flask
- HTML/ CSS
- MariaDB

## 4. Repository Structure

### API
- `app.py`: Flask application 초기화 파일
- `controllers/`: 카테고리별 요청 처리 함수(controller) 모음

### DB
- `services/`: 데이터베이스에서 데이터를 읽어오고 쓰는 기능 모듈
- `database/`: 데이터베이스 연결 관리 모듈
- `query/`: 참고할 수 있는 쿼리 모음(View, Stored Procedure, Trigger등 SQL 고급 기능을 최대한 활용)

### Web
- `templates/`: 프론트엔드 웹 페이지 모듈(flask template folder로 사용됨) 
- `publishing/`: 실제로 작동하지는 않는 껍데기뿐인 html파일 모음


## 5. Key Features
- 사용자 관리: 다양한 사용자 유형(관리자, 제출자, 평가자)을 지원하며, 각각의 역할에 따라 다른 기능을 수행할 수 있습니다.
- 작업(Task) 관리: 작업 생성, 설명, 상태 관리 기능을 제공합니다.
- 참여 관리: 사용자의 작업 참여 상태를 관리하고, 평가할 수 있습니다.
- 데이터 처리: 원본 데이터와 파싱된 데이터를 관리하고 평가하는 기능을 포함합니다.

  <img width="560" alt="image" src="https://github.com/user-attachments/assets/a7d3b5a6-9a26-4b2c-b154-7d261e7a2a6b">

## 6. Report

- **Report |** [9조_최종보고서.pdf](https://github.com/user-attachments/files/17152103/9._.pdf)
