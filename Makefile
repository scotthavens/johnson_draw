maxus:
	docker run --rm -it -v /home/ubuntu/wy2009:/data usdaarsnwrc/awsm:0.10 gen_maxus --out_maxus=/data/topo/maxus.nc \
		--sv_global 300 --sv_local=30 --window=30 --out_tbreak=/data/topo/tbreak.nc --make_tbreak=True /data/topo/topo.nc


maxus_big_30_300:
	docker run --rm -it -v /home/ubuntu/wy2009:/data usdaarsnwrc/awsm:0.10 gen_maxus --out_maxus=/data/topo/maxus_big.nc \
                --sv_global 300 --sv_local=30 --window=30 --out_tbreak=/data/topo/tbreak_big.nc --make_tbreak=True /data/topo/topo_big.nc

maxus_big_30_600:
	docker run --rm -it -v /home/ubuntu/wy2009:/data usdaarsnwrc/awsm:0.10 gen_maxus --out_maxus=/data/topo/maxus_big.nc \
                --sv_global 600 --sv_local=30 --window=30 --out_tbreak=/data/topo/tbreak_big.nc --make_tbreak=True /data/topo/topo_big.nc


jlremote:
	jupyter lab --no-browser --port=5678


no_tripods:
	docker-compose run -d awsm /data/input/config/config_24112020_sh.ini

maxus_20_300:
	docker-compose run -d awsm /data/input/config/config_maxus_20_300.ini

wind_no_125:
	docker-compose run -d awsm /data/input/config/config_wind_no_125.ini

maxus_30_300_big:
	docker-compose run -d awsm /data/input/config/config_maxus_30_300_big.ini