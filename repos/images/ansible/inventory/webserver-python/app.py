from flask import Flask, jsonify, render_template
import docker

app = Flask(__name__)
client = docker.from_env()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/stats', methods=['GET'])
def get_docker_stats():
    stats = []
    containers = client.containers.list()
    for container in containers:
        stats.append({
            "name": container.name,
            "status": container.status,
            "cpu_usage": container.stats(stream=False)["cpu_stats"]["cpu_usage"]["total_usage"],
            "memory_usage": container.stats(stream=False)["memory_stats"]["usage"]
        })
    return jsonify(stats)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)