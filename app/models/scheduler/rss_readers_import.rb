class Scheduler::RssReadersImport < Scheduler

  protected

  def create_background_job
    jobs.destroy_all
    jobs.build handler: RssReadersJob.new.to_yaml, run_at: run_at, scheduled_at: run_at,
               owner_type: 'Scheduler', owner_id: self.id, priority: 0
  end
end