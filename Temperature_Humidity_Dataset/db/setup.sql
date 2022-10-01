CREATE TABLE IF NOT EXISTS temp_data (
    id SERIAL,
    date TIMESTAMP ,
    year SMALLINT ,
    month SMALLINT ,
    day SMALLINT ,
    time TIME ,
    temperature NUMERIC,
    humidity NUMERIC,
    PRIMARY KEY (id)
);

COPY temp_data(Date, Year, Month, Day, Time, Temperature, Humidity)
FROM '/var/lib/postgresql/data/temperature_data.csv'
DELIMITER ','
CSV HEADER;
