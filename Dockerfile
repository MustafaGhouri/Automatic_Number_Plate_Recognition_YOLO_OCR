FROM python:3.8
WORKDIR /main
COPY . /main/
# Upgrade pip
RUN pip install --upgrade pip

# Install NVIDIA's Python package index and TensorRT
RUN pip install nvidia-pyindex && pip install --extra-index-url https://pypi.nvidia.com tensorrt

# Install the remaining packages
RUN pip install -r requirements.txt

EXPOSE 3000
CMD ["python3", "app.py"]