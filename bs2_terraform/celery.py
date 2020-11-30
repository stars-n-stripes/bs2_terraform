# Boilerplate from celery docs
app = celery.Celery('bs2_terraform',
                    broker='amqp://',
                    backend='rpc://',
                    include=['proj.tasks'])

# Optional configuration, see the application user guide.
app.conf.update(
    result_expires=3600,
)

if __name__ == '__main__':
    app.start()