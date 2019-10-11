for f in *; do
    if [ -d "$f" ]; then
        docker build -t exercises-php:$f --build-arg exercise_name=$f .
    fi
done
