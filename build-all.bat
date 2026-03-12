@echo off
echo ========================================
echo  RevPay Microservices - Build All Services
echo ========================================

set MVNW=d:\KAR\rEvpay\Development\RevPay\mvnw.cmd

for %%s in (
  revpay-auth-service
  revpay-user-service
  revpay-wallet-service
  revpay-notification-service
  revpay-loan-service
  revpay-invoice-service
  revpay-analytics-service
  revpay-admin-service
  revpay-ai-service
) do (
  echo.
  echo [BUILD] %%s
  cd /d d:\KAR\microservices\%%s
  call %MVNW% clean package -DskipTests
  if %ERRORLEVEL% NEQ 0 (
    echo [FAILED] %%s
  ) else (
    echo [OK] %%s
  )
)

echo.
echo ========================================
echo  Build complete!
echo ========================================
pause
