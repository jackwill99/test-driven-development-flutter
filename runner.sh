#!/bin/bash

# shellcheck disable=SC2046
echo "Running " $(date)

echo "Which command do you want to run to me ..."

_titleList=("0 : For Pod Installation Error for m1Mac" "1: For Pod Installation Error for IntelMac" "2 : Build flutter project to iOS" "3 : Build flutter project to Android" "4: Watch JSON Serialization" "5: Build flutter App Icon" "6: Build Splash Screen")

_cmdList=("cd ios && arch -x86_64 pod install --repo-update && cd .." "flutter clean && flutter pub get && cd ios && pod deintegrate && rm -rf Pods && rm -rf Podfile.lock && pod cache clean --all && pod install && cd .." "flutter clean && flutter build ios && cd ios && open Runner.xcworkspace && cd .." "flutter clean && flutter build appbundle" "dart run build_runner watch --delete-conflicting-outputs" "dart run flutter_launcher_icons:main" "dart run flutter_native_splash:create")

for str in "${_titleList[@]}"; do
  echo "$str"
done

echo

# shellcheck disable=SC2162
read command

re='^[0-9]+$'

if ! [[ "$command" =~ $re ]]; then
  echo "Invalid digit"
  exit
elif [ "$command" -gt 6 ]; then
  echo "Invalid number"
elif [ "$command" -lt 0 ]; then
  echo "Invalid negative number"
else
  echo
fi

echo "====> ${_titleList[$command]}"

echo

eval "${_cmdList[$command]}"

echo

echo "Successfully " $(date)
