FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
ENV PORT=8080 STREAMLIT_SERVER_PORT=8080 STREAMLIT_SERVER_ADDRESS=0.0.0.0
EXPOSE 8080
CMD ["sh","-c","streamlit run app.py --server.port=${PORT:-8080} --server.address=0.0.0.0"]
