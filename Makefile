maxus:
	docker run --rm -it -v /home/ubuntu/wy2009:/data usdaarsnwrc/awsm:0.10 gen_maxus --out_maxus=/data/maxus.nc \
		--sv_global 100 --sv_local=30 --window=30 --out_tbreak=/data/tbreak.nc --make_tbreak=True /data/topo_filled.nc

maxus_3m:
	docker run --rm -it -v /home/ubuntu/wy2009:/data usdaarsnwrc/awsm:0.10 gen_maxus --out_maxus=/data/maxus_3m.nc \
		--sv_global 60 --sv_local=30 --window=30 --out_tbreak=/data/tbreak_3m.nc --make_tbreak=True /data/topo_3m.nc

jlremote:
	jupyter lab --no-browser --port=5678