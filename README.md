![header](https://capsule-render.vercel.app/api?type=waving&color=gradient&height=200&section=header&text=%20지하철%20혼잡도%20원인%20분석&fontSize=50)

### 수행기간 : 2023.02.08 ~ 2023.03.03

## 주제
지하철 혼잡도 원인 분석

## 팀원
<ul>
  <li><a href="https://github.com/songsurin">송수린</a></li>
  <li><a href="https://github.com/YL-MMLA">이윤</a></li>
  <li><a href="https://github.com/HyunJW">현정환</a></li>
</ul>

## 데이터 출처
- 서울교통공사
  - 지하철혼잡도정보(1 ~ 8호선 30분 단위 평균 혼잡도)
  - 역별 월별 노인 승하차인원 정보(1 ~ 8호선)
  - 연도별 일별 시간대별 역별 승하차 인원
  - 지하철역사 건축 현황(1 ~ 9호선)
- 서울특별시: 서울시 지하철 호선별 역별 유/무임 승하차 인원 정보
- 한국철도공사: 무임승차 대상별 현황
- 카카오 API: 서울시 역의 위치 데이터
- 네이버 지하철: 지하철 경로 탐색
- 통계청: 주요 연령계층별 추계인구(생산연령인구, 고령인구 등)

## 사용한 언어 및 라이브러리, 프레임워크
#### 언어
<div align="left">
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white"/>
  R
</div>

#### 라이브러리
<div align="left">
  <img src="https://img.shields.io/badge/Pandas-2C2D72?style=flat-square&logo=pandas&logoColor=white"/>
  <img src="https://img.shields.io/badge/Numpy-777BB4?style=flat-square&logo=numpy&logoColor=white"/>
  <img src="https://img.shields.io/badge/-selenium-%43B02A?style=flat-square&logo=selenium&logoColor=white"/>
  <img src="https://img.shields.io/badge/Matplotlib-F2F2F2?style=flat-square&logo=Matplotlib&logoColor=black"/>
  Folium, JSON, requests, seaborn,
</div>
<div align="left">
  GGally, nord, tidyverse
</div>
  
#### 프레임워크
<div align="left">
  <img src="https://img.shields.io/badge/Jupyter-F37626?style=flat-square&logo=jupyter&logoColor=white"/>
</div>  

#### 툴
<div align="left">
  anaconda, colab
</div>

## 순서
#### 1. 가설 수립
<ol>
  <li>이용객 수와 혼잡도는 양의 상관관계가 존재할 것이다.</li>
  <li>무임승차자 수 중 가장 많은 비율을 차지하는 노인 승차자 수가 혼잡도에 유의미한 영향을 줄 것이다.</li>
  <li>지하철 역의 층수와 면적과 같은 구조가 혼잡도에 유의미한 영향을 줄 것이다.</li>
</ol>

#### 2. 데이터 수집 및 전처리
  - 지하철혼잡도정보(1 ~ 8호선 30분 단위 평균 혼잡도) 전처리
    - ㅇ.ipynb
  - 역별 월별 노인 승하차인원 정보(1 ~ 8호선) 전처리
    - ㅇ.ipynb
  - 연도별 일별 시간대별 역별 승하차 인원 전처리
    - ㅇ.ipynb
  - 지하철역사 건축 현황(1 ~ 9호선) 전처리
    - ㅇ.ipynb
  - 서울시 지하철 호선별 역별 유/무임 승하차 인원 정보 전처리
    - ㅇ.ipynb
  - 무임승차 대상별 현황 전처리
    - ㅇ.ipynb
  - 주요 연령계층별 추계인구(생산연령인구, 고령인구 등) 전처리
    - ㅇ.ipynb

#### 3. 가설 검정 및 시각화
<ol>
  <li>이용객 수와 혼잡도 사이에는 약간의 상관관계가 존재한다.</li>
  <img src="https://github.com/HyunJW/Subway_Analystic/assets/121409579/4b2d4697-f8e1-4853-8aae-561990a7d198" width=50%/>
  <li>노인 승차자 수는 혼잡도에 유의미한 영향을 주지 않는다.</li>
  <img src="https://github.com/HyunJW/Subway_Analystic/assets/121409579/2cbd496a-0652-4c2a-b847-cbd6577631a5" width=50%/>
  <li>지하철 역의 구조와 혼잡도는 약간의 상관관계가 존재한다.</li>
  <img src="https://github.com/HyunJW/Subway_Analystic/assets/121409579/a8f421db-c7cc-4c48-8774-cab97a875dac" width=50%/>
</ol>

#### 4. 결론
  - 이용객 수와 지학철 역의 구조가 혼잡도에 영향을 준다.
  - 이용객 수가 많은 역의 특징을 확인한 결과 대체적으로 환승이 가능한 역이었다.

#### 5. 해결방안 제시
  - 이용객을 분산시키기 위해 주변에 환승역을 추가 개설한다.
  - 환승역의 개설 조건
    - 현재 환승역인 역들의 층수의 1분위수인 3층을 기준으로 3층보다 많은 층수를 가진 역 채택
    - 현재 환승역인 역들의 면적의 1분위수인 10209.725㎡를 기준으로 이보다 넓은 면적을 가진 역 채택
    - 이미 환승역인 역은 제외
    - 환승 후보역 반경 2.3km 내 후보역과 다른 호선인 역만 채택
    - 환승 후보역 반경 5.75km 내 해당 후보역과 3번에서 채택된 역간의 환승역이 존재하지 않는 경우 연결


## 기대효과
| 화면예시(전) | 화면예시(후) |
| --- | --- |
| <img src="https://github.com/HyunJW/Subway_Analystic/assets/121409579/0bb9486e-ce49-4d1d-99d9-d058362d6f5c"/>| <img src="https://github.com/HyunJW/Subway_Analystic/assets/121409579/beb91c0c-1ae8-4e7e-bdbf-0aa592846da7"/> |

## 개선사항
- 버스, 택시, 도보 이용 등 지하철 승하차 및 혼잡도에 영향을 줄만 한 기타 변수에 대한 고려가 더 필요하다.
- 환승역 지정과 이용객 수의 상관관계 외에 둘 사이의 인과관계를 파악할 필요가 있다.

## 비고
- 





## 데이터 분석
    
1. 혼잡도와 이용객수의 관계
  - 이용객 수가 많으면 무조건 혼잡할까?
    - 혼잡도와 이용객 수간의 상관관계
  - 환승이 가능한 역이 불가능한 역보다 더 혼잡하지 않을까?
    - 환승 가능 여부와 혼잡도간의 상관관계
    
2. 혼잡도와 무임승차자 관계
  - 열차 혼잡도가 가장 높은 시간은 언제일까?
    - 시간대 별 이용자 수 그래프 작성
  - 65세 이상의 인구 무임승차제가 혼잡도에 영향을 미칠까?
    - 무임승차 이용자(노인, 장애인, 국가유공자) 중 노인의 비율 파악
    
3. 혼잡도와 역의 구조간의 관계
  - 층수가 많은 역이 혼잡도가 더 낮지 않을까?
    - 혼잡도와 층수 간의 상관관계
  - 면적이 넓은 역이 혼잡도가 더 낮지 않을까?
    - 혼잡도와 역 면적 간의 상관관계


## 해결 방안 제시

1. 환승역 추가
   - 현재 환승역인 역들의 층수의 1분위수인 3층을 기준으로 3층보다 많은 층수를 가진 역 채택
   - 현재 환승역인 역들의 면적의 1분위수인 10209.725㎡를 기준으로 이보다 넓은 면적을 가진 역 채택
   - 이미 환승역인 역은 제외
   - 환승 후보역 반경 2.3km 내 후보역과 다른 호선인 역만 채택
   - 환승 후보역 반경 5.75km 내 해당 후보역과 3번에서 채택된 역간의 환승역이 존재하지 않는 경우 연결

