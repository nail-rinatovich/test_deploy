from django.http import JsonResponse


def health(request):
    """Return a basic JSON response for the root path."""
    return JsonResponse(
        {
            "status": "ok",
            "message": "Django app is running on Render.",
        }
    )

