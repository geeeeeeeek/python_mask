from django import forms

from app.models import Product


class CommitForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ['title', 'type', 'contact', 'location', 'phone', 'weixin', 'expire']
