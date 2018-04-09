FROM frankierr/dep_search-docker:base

ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-TDT/master/fi_tdt-ud-dev.conllu fi_tdt-ud-dev.conllu
ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-TDT/master/fi_tdt-ud-test.conllu fi_tdt-ud-test.conllu
ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-TDT/master/fi_tdt-ud-train.conllu fi_tdt-ud-train.conllu

ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-FTB/master/fi_ftb-ud-dev.conllu fi_ftb-ud-dev.conllu 
ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-FTB/master/fi_ftb-ud-test.conllu fi_ftb-ud-test.conllu 
ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-FTB/master/fi_ftb-ud-train.conllu fi_ftb-ud-train.conllu 

ADD https://raw.githubusercontent.com/UniversalDependencies/UD_Finnish-PUD/master/fi_pud-ud-test.conllu fi_pud-ud-test.conllu

RUN cat fi_tdt-ud-dev.conllu | python /root/dep_search/build_index.py --wipe -d fi_tdt-ud-dev.db
RUN cat fi_tdt-ud-test.conllu | python /root/dep_search/build_index.py --wipe -d fi_tdt-ud-test.db
RUN cat fi_tdt-ud-train.conllu | python /root/dep_search/build_index.py --wipe -d fi_tdt-ud-train.db

RUN cat fi_ftb-ud-dev.conllu | python /root/dep_search/build_index.py --wipe -d fi_ftb-ud-dev.db
RUN cat fi_ftb-ud-test.conllu | python /root/dep_search/build_index.py --wipe -d fi_ftb-ud-test.db
RUN cat fi_ftb-ud-train.conllu | python /root/dep_search/build_index.py --wipe -d fi_ftb-ud-train.db

RUN cat fi_pud-ud-test.conllu | python /root/dep_search/build_index.py --wipe -d fi_pud-ud-test.db
