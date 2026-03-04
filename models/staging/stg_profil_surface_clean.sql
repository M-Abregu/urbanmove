SELECT
ANNEE as annee,
SEMESTRE as semestre,
trim(CAT_JOUR) as cat_jour,
cast(split(TRNC_HORR_60, 'H-')[offset(0)] as int64) as heure,
trim(ID_GROUPOFLIGNE) as id_groupe_ligne ,
pourc_validations
FROM {{ source('UrbanMove_raw', 'profil_surface') }}