REGISTER NeubotTestsUDFs.jar;
DEFINE   IPtoNumber convert.IpToNumber();
DEFINE   NumberToIP convert.NumberToIp();

NeubotTests = LOAD 'NeubotTests' using PigStorage(';') as (
                  client_address: chararray,
                  client_country: chararray,
                  lon: float,
                  lat: float,
                  client_provider: chararray,
                  mlabservername:  chararray,
                  connect_time:    float,
                  download_speed:  float,
                  neubot_version:  float,
                  platform:        chararray,
                  remote_address:  chararray,
                  test_name:       chararray,
                  timestamp:       long,
                  upload_speed:    float,
                  latency:  float,
                  uuid:     chararray,
                  asnum:    chararray,
                  region:   chararray,
                  city:     chararray,
                  hour:     int,
                  month:    int,
                  year:     int,
                  weekday:  int,
                  day:      int,
                  filedate: chararray
);

BM = FILTER NeubotTests BY (city matches '.*Barcelona.*') OR (city matches '.*Madrid.*');
DUMP BM;
