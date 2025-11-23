import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> fetchJobs(String orgId) async {
    final data = await supabase
        .from('jobs')
        .select('*, sites(*)')
        .eq('organization_id', orgId)
        .order('scheduled_at')
        .limit(100);

    return List<Map<String, dynamic>>.from(data);
  }
}
