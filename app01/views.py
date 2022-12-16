from django.shortcuts import render
from django.http import HttpRequest, JsonResponse


def say_hello(_: HttpRequest) -> JsonResponse:
    result = {
        'msg': 'hello world',
        'code': 200,
        'data': 'hello word'
    }
    return JsonResponse(result, safe=False)
