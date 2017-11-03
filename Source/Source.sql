CREATE TABLE Source (
  sourceId NUMBER(19, 0) NOT NULL,
  scienceCcdExposureId NUMBER(19, 0) DEFAULT NULL,
  filterId NUMBER(3, 0) NOT NULL,
  objectId NUMBER(19, 0) DEFAULT NULL,
  movingObjectId NUMBER(19, 0) DEFAULT NULL,
  procHistoryId NUMBER(10, 0) NOT NULL,
  ra FLOAT (24) NOT NULL,
  raSigmaForDetection float DEFAULT NULL,
  raSigmaForWcs float NOT NULL,
  decl FLOAT (24) NOT NULL,
  declSigmaForDetection float DEFAULT NULL,
  declSigmaForWcs float NOT NULL,
  htmId20 NUMBER(19, 0) NOT NULL,
  xFlux FLOAT (24) DEFAULT NULL,
  xFluxSigma float DEFAULT NULL,
  yFlux FLOAT (24) DEFAULT NULL,
  yFluxSigma float DEFAULT NULL,
  raFlux FLOAT (24) DEFAULT NULL,
  raFluxSigma float DEFAULT NULL,
  declFlux FLOAT (24) DEFAULT NULL,
  declFluxSigma float DEFAULT NULL,
  xPeak FLOAT (24) DEFAULT NULL,
  yPeak FLOAT (24) DEFAULT NULL,
  raPeak FLOAT (24) DEFAULT NULL,
  declPeak FLOAT (24) DEFAULT NULL,
  xAstrom FLOAT (24) DEFAULT NULL,
  xAstromSigma float DEFAULT NULL,
  yAstrom FLOAT (24) DEFAULT NULL,
  yAstromSigma float DEFAULT NULL,
  raAstrom FLOAT (24) DEFAULT NULL,
  raAstromSigma float DEFAULT NULL,
  declAstrom FLOAT (24) DEFAULT NULL,
  declAstromSigma float DEFAULT NULL,
  raObject FLOAT (24) DEFAULT NULL,
  declObject FLOAT (24) DEFAULT NULL,
  taiMidPoint FLOAT (24) NOT NULL,
  taiRange float DEFAULT NULL,
  psfFlux FLOAT (24) DEFAULT NULL,
  psfFluxSigma float DEFAULT NULL,
  apFlux FLOAT (24) DEFAULT NULL,
  apFluxSigma float DEFAULT NULL,
  modelFlux FLOAT (24) DEFAULT NULL,
  modelFluxSigma float DEFAULT NULL,
  petroFlux FLOAT (24) DEFAULT NULL,
  petroFluxSigma float DEFAULT NULL,
  instFlux FLOAT (24) DEFAULT NULL,
  instFluxSigma float DEFAULT NULL,
  nonGrayCorrFlux FLOAT (24) DEFAULT NULL,
  nonGrayCorrFluxSigma float DEFAULT NULL,
  atmCorrFlux FLOAT (24) DEFAULT NULL,
  atmCorrFluxSigma float DEFAULT NULL,
  apDia float DEFAULT NULL,
  Ixx float DEFAULT NULL,
  IxxSigma float DEFAULT NULL,
  Iyy float DEFAULT NULL,
  IyySigma float DEFAULT NULL,
  Ixy float DEFAULT NULL,
  IxySigma float DEFAULT NULL,
  psfIxx float DEFAULT NULL,
  psfIxxSigma float DEFAULT NULL,
  psfIyy float DEFAULT NULL,
  psfIyySigma float DEFAULT NULL,
  psfIxy float DEFAULT NULL,
  psfIxySigma float DEFAULT NULL,
  e1_SG float DEFAULT NULL,
  e1_SG_Sigma float DEFAULT NULL,
  e2_SG float DEFAULT NULL,
  e2_SG_Sigma float DEFAULT NULL,
  resolution_SG float DEFAULT NULL,
  shear1_SG float DEFAULT NULL,
  shear1_SG_Sigma float DEFAULT NULL,
  shear2_SG float DEFAULT NULL,
  shear2_SG_Sigma float DEFAULT NULL,
  sourceWidth_SG float DEFAULT NULL,
  sourceWidth_SG_Sigma float DEFAULT NULL,
  shapeFlag_SG NUMBER(5, 0) DEFAULT NULL,
  snr float NOT NULL,
  chi2 float NOT NULL,
  sky float DEFAULT NULL,
  skySigma float DEFAULT NULL,
  extendedness NUMBER(5, 0) DEFAULT NULL,
  flux_Gaussian FLOAT (24) DEFAULT NULL,
  flux_Gaussian_Sigma float DEFAULT NULL,
  flux_ESG FLOAT (24) DEFAULT NULL,
  flux_ESG_Sigma float DEFAULT NULL,
  sersicN_SG float DEFAULT NULL,
  sersicN_SG_Sigma float DEFAULT NULL,
  radius_SG float DEFAULT NULL,
  radius_SG_Sigma float DEFAULT NULL,
  flux_flux_SG_Cov float DEFAULT NULL,
  flux_e1_SG_Cov float DEFAULT NULL,
  flux_e2_SG_Cov float DEFAULT NULL,
  flux_radius_SG_Cov float DEFAULT NULL,
  flux_sersicN_SG_Cov float DEFAULT NULL,
  e1_e1_SG_Cov float DEFAULT NULL,
  e1_e2_SG_Cov float DEFAULT NULL,
  e1_radius_SG_Cov float DEFAULT NULL,
  e1_sersicN_SG_Cov float DEFAULT NULL,
  e2_e2_SG_Cov float DEFAULT NULL,
  e2_radius_SG_Cov float DEFAULT NULL,
  e2_sersicN_SG_Cov float DEFAULT NULL,
  radius_radius_SG_Cov float DEFAULT NULL,
  radius_sersicN_SG_Cov float DEFAULT NULL,
  sersicN_sersicN_SG_Cov float DEFAULT NULL,
  flagForAssociation NUMBER(5, 0) DEFAULT NULL,
  flagForDetection NUMBER(19, 0) DEFAULT NULL,
  flagForWcs NUMBER(5, 0) DEFAULT NULL  
);