from django.contrib import messages
from django.shortcuts import render

# Create your views here.
from django.urls import reverse
from django.views import generic
from ratelimit.decorators import ratelimit
from app.forms import CommitForm
from app.models import Product
from helpers import get_page_list


class IndexView(generic.ListView):
    model = Product
    template_name = 'app/index.html'
    context_object_name = 'product_list'
    paginate_by = 15
    c = None

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        paginator = context.get('paginator')
        page = context.get('page_obj')
        page_list = get_page_list(paginator, page)
        context['c'] = self.c
        context['page_list'] = page_list
        return context

    def get_queryset(self):
        self.c = self.request.GET.get("c", None)
        if self.c:
            return Product.objects.filter(type=self.c).filter(status=1).order_by('-timestamp')
        else:
            return Product.objects.filter(status=1).order_by('-timestamp')


class DetailView(generic.DetailView):
    model = Product
    template_name = 'app/detail.html'

    def get_object(self, queryset=None):
        obj = super().get_object()
        return obj

    def get_context_data(self, **kwargs):
        context = super(DetailView, self).get_context_data(**kwargs)
        return context


class CommitView(generic.CreateView):

    model = Product
    form_class = CommitForm
    template_name = 'app/commit.html'

    @ratelimit(key='ip', rate='100/h')
    def post(self, request, *args, **kwargs):
        was_limited = getattr(request, 'limited', False)
        if was_limited:
            messages.warning(self.request, "操作太频繁了，请1分钟后再试")
            return render(request, 'app/commit.html', {'form': CommitForm()})
        return super().post(request, *args, **kwargs)

    def get_success_url(self):
        messages.success(self.request, "发布成功! ")
        return reverse('app:commit')
