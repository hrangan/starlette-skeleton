from starlette.applications import Starlette
from starlette.responses import JSONResponse
from starlette.routing import Route


async def index(request):
    return JSONResponse({'hello': 'world'})


app = Starlette(routes=[Route('/', index),])
