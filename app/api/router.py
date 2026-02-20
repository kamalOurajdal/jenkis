from fastapi import APIRouter

from app.api.routes.hello import router as hello_router

api_router = APIRouter()
api_router.include_router(hello_router, prefix="/api/v1", tags=["hello"])
