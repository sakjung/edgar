# EDGAR

## Introduction

본 프로젝트에서는 S&P 500 에 등재된 회사들의 Edgar 10-K와 10-Q 형식 보고서에대한 텍스트 분석을 진행했습니다. 우선 모든 S&P 500 list내 회사들에 대한 352GB 가량의 2009년 부터 2019년사이의 10-K, 10-Q 보고서 데이터를 수집하고 이를 SQLite 데이터베이스에 담는 데이터 파이프라인을 구축했습니다. 그리고 10-K, 10-Q 보고서내의 텍스트 데이터에 대해서 전처리하는 과정을 거치고 산업군별 보고서 텍스트의 특성들에 대해 비교해 보았습니다. 그후, Sentiment Analysis 기법을 적용하여 보고서 텍스트로부터 4 종류의 Sentiment Score들을 추출하고 이를 이용한 통계적 모델링을 통해 주가 예측 분석을 시도하였습니다. 또한 Topic Modelling 기법을 적용하여 보고서 corpus내에 존재하는 토픽들에 대해서 알아보았습니다. 또한 Topic Modelling 결과를 이용하여 시각화와 함께 산업군과 회사들에 대해 다양한 분석을 시도하였고 특정 토픽들이 주가 예측력을 가지는가에 대한 통계 분석도 시도하였습니다. 전체 분석 과정은 [**여기**](https://sakjung.github.io/edgar)에서 확인 가능합니다.

## edgar.Rmd

전체 분석과정을 담은 R Markdown 파일입니다.

## companies.xlsx

 S&P 500 회사 리스트 입니다.

---------

Skill Set: Data Crawling/Scraping, Data Engineering, Text Pre-Processing Techniques, Basic Text Analysis, Sentiment Analysis, Topic Modelling
