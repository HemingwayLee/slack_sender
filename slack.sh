MSG="$1"
LEVEL="$2"

FORMAT_MSG="\`\`\`$MSG\`\`\`"

WEBHOOK_URL=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /webhook_url/) print $2}' settings.ini)
URL_NOSPACE="$(echo "${WEBHOOK_URL}" | tr -d '[:space:]')"

case "$LEVEL" in
  WARNING)
    ICON=':exclamation:'
    ;;
  ERROR)
    ICON=':x:'
    ;;
  *)
    ICON=':slack:'
    ;;
esac

curl -X POST --data "payload={\"text\": \"${ICON} ${FORMAT_MSG}\"}" ${URL_NOSPACE}