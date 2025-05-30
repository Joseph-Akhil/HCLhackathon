resource "aws_apigatewayv2_api" "lambda" {
  name          = "HCLHack_lambda_gw"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "lambda" {
  api_id = aws_apigatewayv2_api.lambda.id

  name        = "HCLHack_lambda_stage"
  auto_deploy = true

}