SELECT A.APNT_NO, P.PT_NAME, A.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM PATIENT AS P
JOIN APPOINTMENT AS A ON P.PT_NO = A.PT_NO
JOIN DOCTOR AS D ON A.MDDR_ID = D.DR_ID
WHERE A.APNT_CNCL_YN = 'N' AND A.APNT_YMD LIKE "2022-04-13%"
ORDER BY A.APNT_YMD