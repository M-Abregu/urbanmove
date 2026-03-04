SELECT
ANNEE as annee,
SEMESTRE as semestre,
trim(ID_GROUPOFLIGNE) as ID_group_ligne ,
trim(CAT_JOUR) as cat_jour,
split(TRNC_HORR_60, '-')[offset(0)] AS heure,
pourc_validations
FROM {{ source('UrbanMove_raw', 'profil_surface') }}