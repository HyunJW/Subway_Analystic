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
  <img src="https://img.shields.io/badge/R-%23276DC3?style=flat-square&logo=R&logoColor=white"/>
</div>

#### 라이브러리
<div align="left">
  <img src="https://img.shields.io/badge/Pandas-2C2D72?style=flat-square&logo=pandas&logoColor=white"/>
  <img src="https://img.shields.io/badge/Numpy-777BB4?style=flat-square&logo=numpy&logoColor=white"/>
  <img src="https://img.shields.io/badge/-selenium-%43B02A?style=flat-square&logo=selenium&logoColor=white"/>
  <img src="https://img.shields.io/badge/Matplotlib-F2F2F2?style=flat-square&logo=Matplotlib&logoColor=black"/>
  <img src="https://img.shields.io/badge/folium-%2377B829?style=flat-square&logo=folium&logoColor=white"/>
  <img src="https://img.shields.io/badge/json-%23000000?style=flat-square&logo=json&logoColor=white"/>
  <img src="https://img.shields.io/badge/requests-ff6600?style=flat-square&logo=requests&logoColor=white"/>
  <img src="https://img.shields.io/badge/seaborn-%2328288C?style=flat-square&logo=seaborn&logoColor=white"/>
</div>
<div align="left">
  <img src="https://img.shields.io/badge/nodejs-nodedotjs?style=flat-square&logo=nodedotjs&logoColor=white"/>
  <img src="https://img.shields.io/badge/tidyverse-%231A162D?style=flat-square&logo=tidyverse&logoColor=white"/>
  <img src="https://img.shields.io/badge/GGally-%231A162D?style=flat-square&logo=GGally&logoColor=white"/>
</div>
  
#### 프레임워크
<div align="left">
  <img src="https://img.shields.io/badge/Jupyter-F37626?style=flat-square&logo=jupyter&logoColor=white"/>
  <img src="https://img.shields.io/badge/RStudio-%23276DC3?style=flat-square&logo=RStudio&logoColor=white"/>
</div>  

#### 툴
<div align="left">
  <img src="https://img.shields.io/badge/anaconda-%2344A833?style=flat-square&logo=anaconda&logoColor=white"/>
  <img src="https://img.shields.io/badge/googlecolab-%23F9AB00?style=flat-square&logo=googlecolab&logoColor=white"/>
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

