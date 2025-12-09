count1=0
count2=0

for i in {1..500}
do
    res=$(curl -s http://localhost:83)

    if echo "$res" | grep -q "Hello 1"; then
        count1=$((count1+1))
    elif echo "$res" | grep -q "Hello 2"; then
        count2=$((count2+1))
    fi
done

echo "Hello 1: $count1 réponses"
echo "Hello 2: $count2 réponses"

