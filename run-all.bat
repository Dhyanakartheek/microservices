@echo off
echo ========================================
echo  RevPay Microservices - Run All Services
echo ========================================

set MVNW=d:\KAR\rEvpay\Development\RevPay\mvnw.cmd

start "Auth Service (8081)"      cmd /k "cd /d d:\KAR\microservices\revpay-auth-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "User Service (8082)"      cmd /k "cd /d d:\KAR\microservices\revpay-user-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Wallet Service (8083)"    cmd /k "cd /d d:\KAR\microservices\revpay-wallet-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Notification Svc (8084)"  cmd /k "cd /d d:\KAR\microservices\revpay-notification-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Loan Service (8085)"      cmd /k "cd /d d:\KAR\microservices\revpay-loan-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Invoice Service (8086)"   cmd /k "cd /d d:\KAR\microservices\revpay-invoice-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Analytics Svc (8087)"     cmd /k "cd /d d:\KAR\microservices\revpay-analytics-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "Admin Service (8088)"     cmd /k "cd /d d:\KAR\microservices\revpay-admin-service && call %MVNW% spring-boot:run"
timeout /t 5 /nobreak >nul
start "AI Service (8089)"        cmd /k "cd /d d:\KAR\microservices\revpay-ai-service && call %MVNW% spring-boot:run"

echo.
echo All services are starting in separate windows!
echo Please wait a moment for them to initialize...
