from fastapi import FastAPI

from app.api.router import api_router
from app.core.config import settings


def create_application() -> FastAPI:
    app = FastAPI(
        title=settings.project_name,
        version=settings.version,
    )
    app.include_router(api_router)
    return app


app = create_application()
