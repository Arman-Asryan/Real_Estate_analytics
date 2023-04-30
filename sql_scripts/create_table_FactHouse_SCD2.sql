-- Script to create FactHouse
CREATE TABLE IF NOT EXISTS {project_id}.{dataset_id}.{table_name} (
  ListingID_NK FLOAT64,
  StreetID_SK STRING,
  DistrictID_SK String,
  PlatformID_SK String,
  TypeID_SK string,
  RegionID_SK String,
  HouseTypeID_SK string,
  AddDateID_SK String,
  EditDateID_SK string,
  SQM string,
  Rooms String,
  Floors String,
  Price String,
  Views Float64,
  Lng FLOAT64,
  Lat FLOAT64,
  EuroWindows FLOAT64,
  IronDoor FLOAT64,
  OpenBalcony FLOAT64,
  SecuritySystem FLOAT64,
  Sunny FLOAT64,
  View_ FLOAT64,
  RoadSide FLOAT64,
  CloseToTheBusStation FLOAT64,
  Parking FLOAT64,
  Park FLOAT64,
  Elevator FLOAT64,
  Furniture FLOAT64,
  Equipment FLOAT64,
  Balcony FLOAT64,
  StorageRoom FLOAT64,
  Playground FLOAT64,
  Parquet FLOAT64,
  Tile FLOAT64,
  LaminateFlooring FLOAT64,
  Heating FLOAT64,
  HotWater FLOAT64,
  Electricity FLOAT64,
  CentralHeating FLOAT64,
  Water FLOAT64,
  Water247 FLOAT64,
  Gas FLOAT64,
  AirConditioning FLOAT64,
  Sewerage FLOAT64,
  Logha FLOAT64,
  Garage FLOAT64,
  Internet FLOAT64,
  Ingestion_date DATE,
  Staging_Raw_ID STRING,
  FOREIGN KEY(StreetID_SK) REFERENCES Apartments.DimStreet_SCD1(StreetID_SK) NOT ENFORCED,
  FOREIGN KEY(DistrictID_SK) REFERENCES Apartments.DimDistrict_SCD1(DistrictID_SK) NOT ENFORCED,
  FOREIGN KEY(PlatformID_SK) REFERENCES Apartments.DimPlatform_SCD1(PlatformID_SK) NOT ENFORCED,
  FOREIGN KEY(TypeID_SK) REFERENCES Apartments.DimType_SCD1(TypeID_SK) NOT ENFORCED,
  FOREIGN KEY(HouseTypeID_SK) REFERENCES Apartments.DimHouseType_SCD1(HouseTypeID_SK) NOT ENFORCED,
  FOREIGN KEY(AddDateID_SK) REFERENCES Apartments.DimAddDate_SCD1(AddDateID_SK) NOT ENFORCED,
  FOREIGN KEY(EditDateID_SK) REFERENCES Apartments.DimEditDate_SCD1(EditDateID_SK) NOT ENFORCED,
  FOREIGN KEY(RegionID_SK) REFERENCES Apartments.DimRegion_SCD1(RegionID_SK) NOT ENFORCED,
  PRIMARY KEY(
    StreetID_SK, DistrictID_SK, TypeID_SK, RegionID_SK,
    HouseTypeID_SK, PlatformID_SK, AddDateID_SK,
    EditDateID_SK
  ) NOT ENFORCED);
