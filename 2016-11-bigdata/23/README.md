# Analyzing Large Data Collections with Apache Pig

Site: http://espinosa-oviedo.com/big-data-visualization/hands-on/analyzing-large-data-collections-with-apache-pig/

## TO DO

Define a data flow using Pig that answers each of these queries:

1. Filter the speedtest conducted in Barcelona or Madrid. Then list the internet providers working in those cities.
2. List the names and the IP ranges of the internet providers located in Barcelona. For this you need to use the IPtoNumber user defined function (cf. NeubotTestsUDFs.jar).
3. Group the speedtest based on the user network infrastructure (e.g., 3G/4G vs ADSL). For this you can assume some max bandwidth (e.g., 21Mb/sec for ADSL).
4. Find the user that realized the maximum number of tests. For this user, produce a table showing the evolution of her/his download/upload speeds.
