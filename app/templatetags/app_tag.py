from datetime import date, datetime
from django.utils.timezone import is_aware, utc

from django import template
register = template.Library()

@register.filter
def time_since(value, default="刚刚"):
    if not isinstance(value, date):  # datetime is a subclass of date
        return value
    now = datetime.now(utc if is_aware(value) else None)
    diff = now - value
    periods = (
        (diff.days / 365, "年"),
        (diff.days / 30, "个月"),
        (diff.days / 7, "周"),
        (diff.days, "天"),
        (diff.seconds / 3600, "小时"),
        (diff.seconds / 60, "分钟"),
        (diff.seconds, "秒"),
    )
    for period, singular in periods:
        if int(period) > 0:
            return "%d%s前" % (period, singular)
    return default


@register.filter
def check_expire(value):
    if not isinstance(value, date):  # datetime is a subclass of date
        return value
    now = datetime.now(utc if is_aware(value) else None)
    diff = now - value
    return diff.days
