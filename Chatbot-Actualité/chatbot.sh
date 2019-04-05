
python3 -m rasa_core.train -d domain.yml -s Stories.md -o models/dialogue

python3 -m rasa_nlu.train -c nlu_config.yml --data nlu.md -o models --fixed_model_name nlu --project current --verbose

python3 -m rasa_core.run -d models/dialogue -u models/current/nlu -p 5001
