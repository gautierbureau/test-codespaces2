#!/bin/bash

echo '#!/bin/bash

export DYNAWO_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export DYNAWO_SRC_OPENMODELICA="$DYNAWO_HOME"/OpenModelica/Source
export DYNAWO_INSTALL_OPENMODELICA=/opt/OpenModelica/Install

export DYNAWO_LOCALE=en_GB
export DYNAWO_RESULTS_SHOW=false
export DYNAWO_BROWSER=lynx

[ -z "$DYNAWO_NB_PROCESSORS_USED" ] && export DYNAWO_NB_PROCESSORS_USED=2

export DYNAWO_BUILD_TYPE=Release
export DYNAWO_CXX11_ENABLED=YES
export DYNAWO_COMPILER=GCC
export DYNAWO_LIBRARY_TYPE=SHARED

export DYNAWO_THIRD_PARTY_INSTALL_DIR=/opt/dynawo/3rParty

"$DYNAWO_HOME"/util/envDynawo.sh $@' > myEnvDynawo.sh
chmod +x myEnvDynawo.sh
# ./myEnvDynawo.sh deploy-autocompletion --deploy
